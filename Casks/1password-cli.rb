cask "1password-cli" do
  version "1.8.0"
  sha256 "6decb453be4e507336b004a0169befcee7dc9918198ae6fa33d0b55d8e8acc5f"

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast "https://app-updates.agilebits.com/product_history/CLI"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://support.1password.com/command-line/"

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
