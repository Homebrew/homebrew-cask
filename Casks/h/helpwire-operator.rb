cask "helpwire-operator" do
  version "2.2"
  sha256 :no_check

  url "https://get.helpwire.app/downloads/operator/mac/helpwire.dmg"
  name "HelpWire Operator"
  desc "Remote desktop controller"
  homepage "https://www.helpwire.app/"

  livecheck do
    url "https://get.helpwire.app/downloads/operator/mac/update/settings.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "HelpWire Operator.app"

  # No zap stanza required
end
