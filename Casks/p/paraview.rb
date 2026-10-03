cask "paraview" do
  arch arm: "arm64", intel: "x86_64"
  arch_name = on_arch_conditional arm: "Silicon", intel: "Intel"

  on_arm do
    version "6.2.0,MPI-OSX11.0-Python3.12"
    sha256 "df762309fe739de605e093848ae335b3bcfbdcc95c51415120b18980b14608b9"
  end
  on_intel do
    version "6.2.0,MPI-OSX10.15-Python3.12"
    sha256 "4e0823775037a4d23cac03c73f8c2ef4b66f0dc051af0edcee74e17a352e1d2d"
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
