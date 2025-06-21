cask "sokim" do
  version "1.2.0"
  sha256 "d729ed4c10ab565125de9b6856374091561519e3b35e32a2ecbb1a86958ede78"

  url "https://github.com/kiding/SokIM/releases/download/v#{version}/SokIM.pkg"
  name "SokIM"
  name "속 입력기"
  desc "Korean-English Input Method Editor"
  homepage "https://github.com/kiding/SokIM"

  depends_on macos: ">= :ventura"

  pkg "SokIM.pkg"

  uninstall pkgutil: "com.kiding.inputmethod.sok"

  zap trash: [
    "/private/var/db/receipts/com.kiding.inputmethod.sok.*",
    "~/Library/Application Scripts/com.kiding.inputmethod.sok",
    "~/Library/Containers/com.kiding.inputmethod.sok",
  ]

  caveats do
    logout
  end
end
