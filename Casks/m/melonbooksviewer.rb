cask "melonbooksviewer" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.melonbooks.co.jp/user_data/packages/default/app/melonbooks-viewer-mac.zip"
  name "Melonbooks Viewer"
  name "メロンブックス 電子書籍"
  desc "Ebook viewer"
  homepage "https://www.melonbooks.co.jp/ebook/list.php?category_id=77"

  disable! date: "2024-10-27", because: :no_longer_available

  pkg "installer-signed-melon.pkg"

  uninstall pkgutil: "jp.co.melonbooks.viewer"
end
