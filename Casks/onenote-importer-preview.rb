cask "onenote-importer-preview" do
  version "1.0.4"
  sha256 "9f791a368093ba5204f3be97771a061fc5a78399a7e4411dd45e2cbbb7e4cd89"

  url "https://download.microsoft.com/download/3/9/C/39CE3624-6D17-495F-B421-D86FC96A23D9/OneNote%20Importer%20(Preview)-#{version}.pkg",
      verified: "download.microsoft.com/"
  name "OneNote Importer (Preview)"
  homepage "https://www.onenote.com/import-evernote-to-onenote"

  livecheck do
    url "https://aka.ms/downloadonenoteimportermac"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  pkg "OneNote Importer (Preview)-#{version}.pkg"

  uninstall pkgutil: "com.microsoft.onenote.onenoteimporter"

  zap trash: [
    "~/Library/Application Support/OneNote Importer (Preview)",
    "~/Library/Caches/com.microsoft.onenote.onenoteimporter",
  ]
end
