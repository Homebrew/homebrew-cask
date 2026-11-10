cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  arch_name = on_arch_conditional arm: "Silicon", intel: "Intel"

  on_arm do
    version "6.2.1,MPI-OSX11.0-Python3.12"
    sha256 "14ab14fb68adab31677c21c008a2d987145093b001ac2424c7a025dc6d765b57"
  end
  on_intel do
    version "6.2.1,MPI-OSX10.15-Python3.12"
    sha256 "4b33a67f2c7209c0b4124eb47bb6834dc3bcf6e4be15a6843ef82c106de15852"
  end

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.csv.first.major_minor}&type=binary&os=macOS%20#{arch_name}&downloadFile=ParaView-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      user_agent: :fake
  name "ParaView"
  desc "Data analysis and visualization application"
  homepage "https://www.paraview.org/"

  livecheck do
    url "https://www.paraview.org/files/listing.txt"
    regex(%r{/v?(?:\d+(?:\.\d+)+)/ParaView[._-]v?(\d+(?:[.-]\d+)+)(?:[._-](.*?))?[._-](?:#{arch}|universal)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).filter_map do |match|
        next if match[1]&.match?(/^RC/i)

        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on :macos

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  uninstall quit: "org.paraview.ParaView"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
