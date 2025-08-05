cask "deepgit" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4"
  sha256 arm:   "1ff21eb94901e929128c11e49a25868fd71325d4e99701b0eb98f6eb94c5f7d4",
         intel: "f6ed4362210512a5867092188fdbd14b05efdf55148b5cef3b64cf9d71559ded"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-#{arch}-#{version.dots_to_underscores}.dmg"
  name "DeepGit"
  desc "Tool to investigate the history of source code"
  homepage "https://www.syntevo.com/deepgit/"

  livecheck do
    url "https://www.syntevo.com/deepgit/download/"
    regex(%r{href=.*?/deepgit-#{arch}-(\d+(?:_\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  app "DeepGit.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.deepgit.plist",
    "~/Library/Preferences/DeepGit",
    "~/Library/Saved Application State/com.syntevo.deepgit.savedState",
  ]
end
