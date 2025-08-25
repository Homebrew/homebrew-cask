cask "azookey" do
  version "0.1"
  sha256 "b5e41eee24205dfde7634cb3a67f70ba5cbea410ce97e1627199465cf01b100d"

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
