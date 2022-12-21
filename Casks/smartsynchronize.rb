cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.3.2"
  sha256 arm:   "7d8ba82910c3afedced60bb2bcb6f9b0a0727dcfe3b158c93b7c74739ef09d88",
         intel: "83b91e8708674c4ed5dd2dce790c322aedf9df5ddc642ce47e7760a8de0b2c92"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  desc "File and directory compare tool"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/download/"
    strategy :page_match do |page|
      v = page[/smartsynchronize[._-]#{arch}[._-]v?(\d+(?:_\d+)+)\.dmg/i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
