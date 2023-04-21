cask "google-ads-editor" do
  version :latest
  sha256 :no_check

  url "https://dl.google.com/adwords_editor/Google_AdWords_Editor.dmg"
  name "Google Ads Editor"
  desc "Managing your campaigns"
  homepage "https://ads.google.com/home/tools/ads-editor/"

  livecheck do
    skip "unversioned QT application"
  end

  app "Google Ads Editor.app"
end
