cask "encryptic" do
  version "0.1.0"
  sha256 "8f2971a31328b03bdd0d183a9843853109dd2888efdc667a2c7f2214dbd03c43"

  url "https://github.com/encryptic-team/encryptic/releases/download/#{version}/Encryptic-#{version}-darwin-x64.zip"
  name "encryptic"
  desc "Encryption-focused open source note taking application"
  homepage "https://github.com/encryptic-team/encryptic"

  app "encryptic.app"
end
