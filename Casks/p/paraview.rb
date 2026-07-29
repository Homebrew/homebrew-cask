cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.2.0,RC1-MPI-OSX11.0-Python3.12"
    sha256 "bfe448296cb326b69a3d881d2904c55a8d3fbad4ccac75c4daefd9dc1f5216a5"
  end
  on_intel do
    version "6.2.0,RC1-MPI-OSX10.15-Python3.12"
    sha256 "dfb98aa594ecde6e61126bd5322a73290804b15fae628bbc2f3f58d0c17fcf33"
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
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: :big_sur

  app "ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
