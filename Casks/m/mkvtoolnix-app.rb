cask "mkvtoolnix-app" do
  arch arm: "arm64", intel: "x86_64"

  version "102.0-2"
  sha256 arm:   "10ebd3b424fd5f4987d50563fc43b5956bf3d4f3bbfa24fa870db956c96578b8",
         intel: "43ca3ed10f8035552fe38de24d9c40a99af53b40f9caa4dabccabcf58f89bf42"

  url "https://mkvtoolnix.download/macos/releases/#{version.split("-").first}/MKVToolNix-#{version}-#{arch}.dmg"
  name "MKVToolNix"
  desc "GUI including a set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/releases/"
    regex(/href=.*?MKVToolNix[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      main_version = page.scan(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
                         .max_by { |match| Version.new(match[0]) }
                         &.first
      next if main_version.blank?

      version_directory = Homebrew::Livecheck::Strategy.page_content("https://mkvtoolnix.download/macos/releases/#{main_version}/")
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
