cask "gactions" do
  version :latest
  sha256 :no_check

  url "https://dl.google.com/gactions/v3/release/gactions-sdk_darwin.tar.gz"
  name "gactions"
  desc "CLI tool for Google Actions SDK"
  homepage "https://developers.google.com/assistant/conversational/overview"

  binary "aog_cli/gactions"
end
