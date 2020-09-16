cask "codelite" do
  version "14.0.0"
  sha256 "502c4bd7636226cd7defbe38dbf6ad45781b24e22058524c0037d6176146e33e"

  url "https://downloads.codelite.org/downloads.php?osx"
  appcast "https://github.com/eranif/codelite/releases.atom",
          must_contain: version.chomp(".0")
  name "CodeLite"
  desc "Cross-platform IDE for C, C++, PHP and Node.js"
  homepage "https://codelite.org/"

  app "codelite.app"

  zap trash: [
    "~/Library/Application Support/codelite",
    "~/Library/Preferences/codelite.plist",
  ]
end
