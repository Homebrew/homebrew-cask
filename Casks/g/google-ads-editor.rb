cask "google-ads-editor" do
  version "2.8"
  sha256 :no_check

  url "https://dl.google.com/adwords_editor/Google_AdWords_Editor.dmg"
  name "Google Ads Editor"
  desc "Managing your campaigns"
  homepage "https://ads.google.com/home/tools/ads-editor/"

  livecheck do
    url "https://support.google.com/google-ads/editor/topic/13728"
    regex(/version\s+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Google Ads Editor.app"

  zap trash: "~/Library/Saved Application State/com.google.googleadseditor.savedState"
end
