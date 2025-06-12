cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.13.3,MPI-OSX11.0-Python3.10"
    sha256 "d37e9d7e83733b8881d63a260b2252800afff167cd37f7297c3f0c06e06b94cb"
  end
  on_intel do
    version "5.13.2,MPI-OSX10.15-Python3.10"
    sha256 "dbf6e006927b6bcc91040440078b9aaf355ac34f4ccb7fbd20b117df9f74f485"
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

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :sierra"

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
