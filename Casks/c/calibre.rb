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
    version "9.19.0"
    sha256 "207c80d80ace59cb21a4c52fa1c40843a8e860de100304e590da664db3abfb3f"

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
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-complete"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-customize"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-debug"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-parallel"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-server"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-smtp"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibredb"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-convert"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-device"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-meta"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-polish"
  binary "#{appdir}/calibre.app/Contents/MacOS/fetch-ebook-metadata"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrf2lrs"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrs2lrf"
  binary "#{appdir}/calibre.app/Contents/MacOS/markdown-calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/web2disk"
  # The GUI tools need to be run from their original paths, not a
  # symlink. Install wrapper scripts, instead. See #300885 for
  # details.
  command_wrapper "calibre", executable: "#{appdir}/calibre.app/Contents/MacOS/calibre"
  command_wrapper "ebook-edit", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-edit"
  command_wrapper "ebook-viewer", executable: "#{appdir}/calibre.app/Contents/MacOS/ebook-viewer"
  command_wrapper "lrfviewer", executable: "#{appdir}/calibre.app/Contents/MacOS/lrfviewer"

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
