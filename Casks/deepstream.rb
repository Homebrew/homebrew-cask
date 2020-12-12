cask "deepstream" do
  version "5.0.5"
  sha256 "5f7203a14a8d353d4be708e0f6d664f8b00434da33bed4c3762e4ee7609693da"

  # github.com/deepstreamIO/deepstream.io/ was verified as official when first introduced to the cask
  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg"
  appcast "https://github.com/deepstreamIO/deepstream.io/releases.atom"
  name "deepstream"
  homepage "https://deepstream.io/"

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  caveats do
    files_in_usr_local
  end
end
