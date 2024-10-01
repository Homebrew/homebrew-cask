cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.13.1,MPI-OSX11.0-Python3.10"
    sha256 "228438f7feb582a0b0baf519a037b291ca2bb2eb503a99458e3c5ac42713bf1a"
  end
  on_intel do
    version "5.13.1,MPI-OSX10.15-Python3.10"
    sha256 "9912623a5fc1b7607f1fac88cb280017ee87587e42c4f32050005cebca4f8218"
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

  depends_on macos: ">= :sierra"

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
