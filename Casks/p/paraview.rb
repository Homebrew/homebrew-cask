cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.0.1,MPI-OSX11.0-Python3.12"
    sha256 "0cbba94ff71c5c9c23628fa6a1a53e2d8058d7b8989cf74273454e849613d367"
  end
  on_intel do
    version "6.0.1,MPI-OSX10.15-Python3.12"
    sha256 "fcb2d686c3a3b5cb09d62eaf2c61aaf8933e557bcaac45a2a5c08b50d03d872c"
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

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
