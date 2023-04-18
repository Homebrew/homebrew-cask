cask "provisionql" do
  version "1.6.3"
  sha256 "2f6fad63edb7c9064a5b859ef71b1265eee71b9e4bd29776207f6576a22c72b3"

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  name "ProvisionQL"
  homepage "https://github.com/ealeksandrov/ProvisionQL"

  qlplugin "ProvisionQL.qlgenerator"

  caveats <<~EOS
    To prevent mobileprovision QuickLook override by Xcode:

      https://github.com/ealeksandrov/ProvisionQL/issues/20
  EOS
end
