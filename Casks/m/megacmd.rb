cask "megacmd" do
  version "2.0.0"
  sha256 :no_check

  url "https://mega.nz/MEGAcmdSetup.dmg"
  name "MEGAcmd"
  desc "Command-line access to MEGA services"
  homepage "https://mega.nz/cmd"

  # The upstream website doesn't appear to provide version information. We check
  # GitHub tags as a best guess of when a new version is released (upstream
  # doesn't use GitHub releases).
  livecheck do
    url "https://github.com/meganz/MEGAcmd"
    regex(/^v?(\d+(?:\.\d+)+)[._-]macOS$/i)
  end

  depends_on macos: ">= :catalina"

  app "MEGAcmd.app"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/MEGAcmdShell", target: "megacmd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-attr"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-backup"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-cancel"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-cat"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-cd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-cmd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-confirm"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-confirmcancel"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-cp"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-debug"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-deleteversions"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-df"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-du"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-errorcode"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-exclude"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-exec"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-export"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-find"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-ftp"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-get"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-graphics"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-help"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-https"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-import"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-invite"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-ipc"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-killsession"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-lcd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-log"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-login"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-logout"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-lpwd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-ls"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-mediainfo"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-mkdir"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-mount"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-mv"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-passwd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-permissions"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-preview"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-put"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-pwd"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-quit"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-reload"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-rm"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-session"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-share"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-showpcr"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-signup"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-speedlimit"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-sync"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-thumbnail"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-transfers"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-tree"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-userattr"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-users"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-version"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-webdav"
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/mega-whoami"

  zap trash: "~/.megaCmd"

  caveats <<~EOS
    #{token} only works if called from /Applications, so you may need to install
    it with:

      brew install --cask --appdir=/Applications #{token}
  EOS
end
