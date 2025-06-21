cask "pdf-over" do
  arch arm: "aarch64", intel: "x86_64"
  folder = on_arch_conditional arm: "pdf-over-for-macos-aarch64/", intel: "pdf-over-mac/"

  version "4.4.6"
  sha256 arm:   "f79ee468b6947fe42a83ed7c0523355a229cef3c6d41ba1215c25584dbb0fbbc",
         intel: "b12ec8f66b477958602b477e0ca3b20f792655e1178cdd97cab1742afc40b156"

  url "https://technology.a-sit.at/download/#{folder}?version=#{version.dots_to_hyphens}"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte or ID Austria"
  homepage "https://technology.a-sit.at/pdf-over/"

  livecheck do
    url "https://technology.a-sit.at/download/#{folder}"
    regex(/PDF[._-]Over[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

  app "PDF-Over.app"

  zap trash: [
    "~/.pdf-over",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/at.a-sit.pdf-over.sfl*",
    "~/Library/Saved Application State/at.a-sit.PDF-Over.savedState",
  ]

  caveats do
    depends_on_java "8+"
  end
end
