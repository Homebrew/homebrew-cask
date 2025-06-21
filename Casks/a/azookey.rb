cask "azookey" do
  version "0.1.0-alpha.18"
  sha256 "72d5d424c44aafa1ce76e0da99fdc61518dc94c3b56068ff3f539357d69c2fe9"

  url "https://github.com/azooKey/azooKey-Desktop/releases/download/v#{version}/azooKey-release-signed.pkg"
  name "azooKey"
  desc "Japanese input method"
  homepage "https://github.com/azooKey/azooKey-Desktop"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]alpha[._-]?\d+)?)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  pkg "azooKey-release-signed.pkg"

  uninstall quit:    "dev.ensan.inputmethod.azooKeyMac",
            pkgutil: "dev.ensan.inputmethod.azooKeyMac"

  zap trash: [
    "~/Library/Application Scripts/dev.ensan.inputmethod.azooKeyMac",
    "~/Library/Application Scripts/group.dev.ensan.inputmethod.azooKeyMac",
    "~/Library/Containers/dev.ensan.inputmethod.azooKeyMac",
    "~/Library/Group Containers/group.dev.ensan.inputmethod.azooKeyMac",
  ]
end
