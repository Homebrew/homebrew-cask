cask "paraview" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.0.0,RC2-MPI-OSX11.0-Python3.12"
    sha256 "c991621089a2a21dd6e3bbb85f5d905869d2385ea524fd0e9913b7f1b74d595b"
  end
  on_intel do
    version "6.0.0,RC2-MPI-OSX10.15-Python3.12"
    sha256 "231b69e8cf9003eac020ec052f46859e06224823c2453e93e011590207362cc0"
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

  app "ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app"
  binary "#{appdir}/ParaView-#{version.csv.first}-#{version.csv.second.split("-").first}.app/Contents/MacOS/paraview"

  zap trash: [
    "~/.config/ParaView",
    "~/Library/Saved Application State/org.paraview.ParaView.savedState",
  ]
end
