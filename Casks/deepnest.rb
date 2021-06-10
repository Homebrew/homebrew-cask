cask "deepnest" do
  version "1.0.5"
  sha256 "602c97f2becfddd808bfea8cab1cd7c20503494fa17df2ee55b3cec65a45c7eb"

  url "https://deepnest.io/Deepnest-#{version}-mac.zip"
  name "deepnest"
  desc "/opt/homebrew/Library/Taps/homebrew/homebrew-cask/Casks/deepnest.rb`"
  homepage "https://deepnest.io/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?Deepnest-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  app "Deepnest-#{version}-mac/Deepnest-mac-#{version}.app", target: "Deepnest.app"
end
