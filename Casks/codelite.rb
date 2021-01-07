cask "codelite" do
  version "14.0.0"
  sha256 :no_check

  url "https://downloads.codelite.org/downloads.php?osx"
  name "CodeLite"
  desc "Cross-platform IDE for C, C++, PHP and Node.js"
  homepage "https://codelite.org/"

  livecheck do
    url "https://github.com/eranif/codelite/releases"
    strategy :git
  end

  app "codelite.app"

  zap trash: [
    "~/Library/Application Support/codelite",
    "~/Library/Preferences/codelite.plist",
  ]
end
