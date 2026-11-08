cask "calibre" do
  on_ventura :or_older do
    on_big_sur :or_older do
      version "6.29.0"
      sha256 "2f76428ae19617875c5725cd892751a80eb2acdda76e06cd19c2f21a63966998"
    end
    on_monterey do
      version "6.29.0"
      sha256 "2f76428ae19617875c5725cd892751a80eb2acdda76e06cd19c2f21a63966998"
    end
    on_ventura do
      version "9.6.0"
      sha256 "1e20b1a9859eae7411f4ff4fd7f7c64524ca16339d969aeb828b791673d03d4c"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "9.18.0"
    sha256 "b4b8000433b6e4d0fdfb3bd0283cd76b7525c65daf5af027ec4dc1e629ef3d0c"

    livecheck do
      url "https://calibre-ebook.com/dist/osx"
      strategy :header_match
    end
  end

  # Do not change this URL to the GitHub repo. Releases are removed from GitHub
  # after a new release, which breaks the cask. We have accepted that downloads
  # from the homepage may be slow for some users.
  # See https://github.com/Homebrew/homebrew-cask/pull/183664
  url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  name "calibre"
  desc "E-books management software"
  homepage "https://calibre-ebook.com/"

  depends_on :macos

  app "calibre.app"
  command_wrapper "calibre", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre"
  command_wrapper "calibre-complete", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre-complete"
  command_wrapper "calibre-customize", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre-customize"
  command_wrapper "calibre-debug", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre-debug"
  command_wrapper "calibre-parallel", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre-parallel"
  command_wrapper "calibre-server", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre-server"
  command_wrapper "calibre-smtp", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre-smtp"
  command_wrapper "calibredb", executable: "#{appdir}/calibre.app/Contents/MacOS/calibredb"
  command_wrapper "ebook-convert", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-convert"
  command_wrapper "ebook-device", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-device"
  command_wrapper "ebook-edit", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-edit"
  command_wrapper "ebook-meta", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-meta"
  command_wrapper "ebook-polish", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-polish"
  command_wrapper "ebook-viewer", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-viewer"
  command_wrapper "fetch-ebook-metadata", executable: "#{appdir}/calibre.app/Contents/MacOS/fetch-ebook-metadata"
  command_wrapper "lrf2lrs", executable: "#{appdir}/calibre.app/Contents/MacOS/lrf2lrs"
  command_wrapper "lrfviewer", executable: "#{appdir}/calibre.app/Contents/MacOS/lrfviewer"
  command_wrapper "lrs2lrf", executable: "#{appdir}/calibre.app/Contents/MacOS/lrs2lrf"
  command_wrapper "markdown-calibre", executable: "#{appdir}/calibre.app/Contents/MacOS/markdown-calibre"
  command_wrapper "web2disk", executable: "#{appdir}/calibre.app/Contents/MacOS/web2disk"

  uninstall quit: "net.kovidgoyal.calibre"

  zap delete: "/Library/Caches/calibre-singleinstance-*.lock",
      trash:  [
        "~/Library/Application Support/calibre-ebook.com",
        "~/Library/Caches/calibre",
        "~/Library/Preferences/calibre",
        "~/Library/Preferences/com.calibre-ebook.ebook-viewer.plist",
        "~/Library/Preferences/net.kovidgoyal.calibre.plist",
        "~/Library/Saved Application State/com.calibre-ebook.ebook-viewer.savedState",
        "~/Library/Saved Application State/net.kovidgoyal.calibre.savedState",
      ]
end
