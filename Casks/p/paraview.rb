cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.1.0,RC2-MPI-OSX11.0-Python3.12"
    sha256 "6bdae4083ab11f147ca84c312217a57b8227e77a2b65e43a2aeb8ff39500a8e7"
  end
  on_intel do
    version "6.1.0,RC2-MPI-OSX10.15-Python3.12"
    sha256 "fcc7964737eb6cadf5a9c82fc9a2b8b3b83e0fbfc7227da22aa354a7ed1c8e44"
  end

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.csv.first.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      user_agent: :fake
  name "ParaView"
  desc "Data analysis and visualization application"
  homepage "https://www.paraview.org/"

  livecheck do
    url "https://www.paraview.org/files/listing.txt"
    regex(%r{/v?(?:\d+(?:\.\d+)+)/ParaView[._-]v?(\d+(?:[.-]\d+)+)(?:[._-](.*?))?[._-](?:#{arch}|universal)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1] ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
