cask "mkvtoolnix-app" do
  arch arm: "arm64", intel: "x86_64"

  version "99.0-1"
  sha256 arm:   "8d3f3b5428fcdfcbbdc48f63a49d2919f64583889747a6197fcc6d582f4d9a4d",
         intel: "eae9cd5fcd6d48723f6f6bbeed959f784dcaae1a7d48b10fae61b51c2a3f0140"

  url "https://mkvtoolnix.download/macos/releases/#{version.split("-").first}/MKVToolNix-#{version}-#{arch}.dmg"
  name "MKVToolNix"
  desc "GUI including a set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/releases/"
    regex(%r{.*?/MKVToolNix[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      major_version = page.scan(%r{href=".*?releases/(\d+(?:\.\d+)+)/}i)&.max&.first
      next if major_version.blank?

      version_directory = Homebrew::Livecheck::Strategy.page_content("https://mkvtoolnix.download/macos/releases/#{major_version}/")
      version_directory[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: :ventura

  app "MKVToolNix.app"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvpropedit"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvextract.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvinfo.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvmerge.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvpropedit.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvtoolnix-gui.1"

  zap trash: [
    "~/Library/Preferences/bunkus.org/mkvtoolnix-gui",
    "~/Library/Saved Application State/download.mkvtoolnix.MKVToolNix.savedState",
  ]
end
