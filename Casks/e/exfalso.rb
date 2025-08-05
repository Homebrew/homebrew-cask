cask "exfalso" do
  version "4.4.0"
  sha256 "0e0fca957833ab1b6ea58b7617984d4fb3633b30ab5e8ad58128b11cd32ca5d9"

  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/ExFalso-#{version}.dmg",
      verified: "github.com/quodlibet/quodlibet/"
  name "Ex Falso"
  desc "Music tag editor"
  homepage "https://quodlibet.readthedocs.io/"

  livecheck do
    url "https://quodlibet.readthedocs.io/en/latest/downloads.html"
    regex(%r{href=.*?/ExFalso[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "ExFalso.app"

  zap trash: "~/.quodlibet"
end
