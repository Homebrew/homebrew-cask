cask "spamsieve" do
  version "2.9.46"
  sha256 "524f5de7c91bf270de59f7faa3f4c292fd441fbd5019a9766ef41b0ddb7737a9"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SpamSieve-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SpamSieve.app"
end
