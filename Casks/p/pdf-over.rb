cask "pdf-over" do
  arch arm: "aarch64", intel: "x86_64"
  folder = on_arch_conditional arm: "pdf-over-for-macos-aarch64/", intel: "pdf-over-mac/"

  version "4.4.5"
  sha256 arm:   "80c8fcd36373ce49b20e750250cac3cfd6c330cab7eb929f0636ca0ee5270a9f",
         intel: "e3e1bae9017e8a6677d3666cbc4c236a133a063f9360c809a4182185634283cd"

  url "https://technology.a-sit.at/download/#{folder}?version=#{version.dots_to_hyphens}"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte or ID Austria"
  homepage "https://technology.a-sit.at/pdf-over/"

  livecheck do
    url "https://technology.a-sit.at/download/#{folder}"
    regex(/PDF[._-]Over[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

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
