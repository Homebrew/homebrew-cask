cask "provisionql" do
  version "1.6.3"
  sha256 "2f6fad63edb7c9064a5b859ef71b1265eee71b9e4bd29776207f6576a22c72b3"

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  name "ProvisionQL"
  desc "QuickLook plugin for mobile apps and provisioning profiles"
  homepage "https://github.com/ealeksandrov/ProvisionQL"

  qlplugin "ProvisionQL.qlgenerator"

  # No zap stanza required

  caveats <<~EOS
    To prevent mobileprovision QuickLook override by Xcode:

      https://github.com/ealeksandrov/ProvisionQL/issues/20
  EOS
end
