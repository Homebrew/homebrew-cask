cask "lbry" do
  version "0.53.9"
  sha256 "3769997e7cdb6e563a505c5f8375325ef26fc74318aea0defde711fc5fcfee5e"

  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  name "LBRY Desktop"
  desc "Official client for LBRY, a decentralised file-sharing and payment network"
  homepage "https://github.com/lbryio/lbry-desktop"

  # see discussions at https://github.com/lbryio/lbry-desktop/issues/7766
  deprecate! date: "2025-11-30", because: :unmaintained
  disable! date: "2026-11-30", because: :unmaintained

  depends_on :macos

  app "LBRY.app"
  command_wrapper "lbrynet",
                  executable: "#{appdir}/LBRY.app/Contents/Resources/static/daemon/lbrynet"
  command_wrapper "lbry-first",
                  executable: "#{appdir}/LBRY.app/Contents/Resources/static/lbry-first/lbry-first"

  zap trash: [
    "~/Library/Application Support/lbry",
    "~/Library/Preferences/io.lbry.LBRY.plist",
    "~/Library/Saved Application State/io.lbry.LBRY.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
