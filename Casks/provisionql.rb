cask "provisionql" do
  version "1.6.2"
  sha256 "762075acffde7c2aad376bbd946c4533ca81f214ef0e88eaab85d94551cc497a"

  url "https://github.com/ealeksandrov/ProvisionQL/releases/download/#{version}/ProvisionQL.zip"
  appcast "https://github.com/ealeksandrov/ProvisionQL/releases.atom"
  name "ProvisionQL"
  homepage "https://github.com/ealeksandrov/ProvisionQL"

  qlplugin "ProvisionQL.qlgenerator"

  caveats <<~EOS
    To prevent mobileprovision QuickLook override by Xcode:

      https://github.com/ealeksandrov/ProvisionQL/issues/20
  EOS
end
