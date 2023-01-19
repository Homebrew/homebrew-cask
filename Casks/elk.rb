cask "elk" do
  arch arm: "macos_aarch64", intel: "macos_x86_64"

  version "0.2.0"
  sha256 arm:   "0d3124dfc666157e99206c28c569ceb47d48ca11f4465fe3edda8cc25a5143ca",
         intel: "6e109fc83f7754250c9968d72a14420adaef9f2e8b46e18aa54ddd5f44534d9e"

  url "https://github.com/elk-zone/elk-native/releases/download/elk-native-v#{version}/Elk_#{version}_#{arch}.dmg"
  name "Elk Native"
  desc "Native version of Elk, a nimble Mastodon web client"
  homepage "https://github.com/elk-zone/elk-native"

  livecheck do
    url "https://github.com/elk-zone/elk-native/releases/"
    regex(/elk-native-v(\d+(?:\.\d+)+)/i)
  end

  app "Elk.app"
end
