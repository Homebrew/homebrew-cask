cask "mail-assistant" do
  version "0.4"
  sha256 :no_check

  url "https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Mail+Assistant.app.zip",
      verified: "s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/"
  name "Mail Assistant"
  desc "Companion tool for Drafts to allow sending HTML formatted email"
  homepage "https://docs.getdrafts.com/misc/mail-assistant"

  livecheck do
    url :homepage
    regex(%r{Download\s+Mail\s+Assistant</strong>.*</a>.*\(v?(\d+(?:\.\d+)+)[, <]}im)
  end

  depends_on macos: ">= :big_sur"

  app "Mail Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/maccatalyst.com.agiletortoise.Mail-Assistant",
    "~/Library/Containers/maccatalyst.com.agiletortoise.Mail-Assistant",
  ]
end
