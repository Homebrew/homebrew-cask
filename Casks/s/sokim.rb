cask "sokim" do
  version "1.1.6"
  sha256 "125ffe88a167abc9f1267c7517810fc2ab8fc13212a1d3d1fa7a3479e6e06f8a"

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
    <<~EOS
      Installing or uninstalling this cask requires some preparation.
      For more information, see GitHub: https://github.com/kiding/SokIM
    EOS
  end
end
