cask "gactions" do
  version "3"
  sha256 :no_check # required as upstream package is updated in-place

  # Download page: https://developers.google.com/assistant/conversational/quickstart
  url "https://dl.google.com/gactions/v#{version}/release/gactions-sdk_darwin.tar.gz"
  name "gactions"
  desc "CLI tool for Google Actions SDK"
  homepage "https://developers.google.com/assistant/conversational"

  binary "aog_cli/gactions"
end
