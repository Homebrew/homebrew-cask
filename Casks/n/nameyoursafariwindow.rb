cask "nameyoursafariwindow" do
  version "0.3.0"
  sha256 "9d4001562013189df5c9016505e262a0839084f8b2f654a26dde41f71f20f53a"

  url "https://github.com/bricolageTheory/NameYourSafariWindow/releases/download/v#{version}/SafariWindowSwitcher-v#{version}.zip"
  name "Safari Window Switcher"
  desc "Assign custom names to Safari windows and switch focus effortlessly"
  homepage "https://github.com/bricolageTheory/NameYourSafariWindow"

  depends_on macos: :big_sur

  app "Safari Window Switcher.app"

  zap trash: [
    "~/Library/Containers/com.coolnick.SafariWindowSwitcher",
    "~/Library/Containers/com.coolnick.SafariWindowSwitcher.Extension",
  ]
end
