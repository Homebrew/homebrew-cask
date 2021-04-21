cask "exfalso" do
  version "4.3.0"
  sha256 "988afe6d13691e2ea05c6672aa937d66f4a13f3372d44b6344b50a32da12cf0f"

  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/ExFalso-#{version}.dmg",
      verified: "github.com/quodlibet/quodlibet/"
  name "Ex Falso"
  desc "Music tag editor"
  homepage "https://quodlibet.readthedocs.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^release-(\d+(?:\.\d+)*)$/i)
  end

  app "ExFalso.app"

  zap trash: "~/.quodlibet"
end
