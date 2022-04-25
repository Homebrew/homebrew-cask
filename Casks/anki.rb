cask "anki" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"
  version "2.1.51"

  if Hardware::CPU.intel?
    if MacOS.version >= :mojave
      sha256 "c1930911b7297b3540b8148a9703531e5aa3a7415f9b20c1ed70fa041b898720"
      qtversion = 6
    else
      sha256 "7db1414f94ede307456b7b17de8bf8266b53d6fc60d12a387db336d7f8591eda"
      qtversion = 5
    end
  else
    sha256 "e910d360aa22b17e4327d54f5ab3fd547f4308005a6dbf4c0779c6e12f23b51d"
    qtversion = 6
  end

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt#{qtversion}.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "anki-beta"
  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
