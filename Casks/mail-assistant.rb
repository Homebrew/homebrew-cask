cask "mail-assistant" do
  version "v0.2.1"
  sha256 :no_check

  url "https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Mail+Assistant.app.zip",
      verified: "s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/"
  name "mail-assistant"
  desc "Companion tool for Drafts to allow sending HTML formatted email"
  homepage "https://docs.getdrafts.com/misc/mail-assistant"

  depends_on macos: ">= :big_sur"

  app "Mail Assistant.app"
end
