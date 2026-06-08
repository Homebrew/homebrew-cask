cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.1.1,MPI-OSX11.0-Python3.12"
    sha256 "d6066631ed3dbd5bc237f611bc3fae13bfef3f15229e8e5b993716ab4a19ec30"
  end
  on_intel do
    version "6.1.1,MPI-OSX10.15-Python3.12"
    sha256 "8c4db0916fed24dc0dab3a4e765c156b8fb24dcd76ff98bbd459c7689fb8ef8b"
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

  app "ParaView-#{version.csv.first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
