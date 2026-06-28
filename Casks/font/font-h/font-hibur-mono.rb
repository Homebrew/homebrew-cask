cask "font-hibur-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hiburmono/HiburMono-Regular.ttf"
  name "Hibur Mono"
  homepage "https://github.com/typehabesha/HiburMono"

  font "HiburMono-Regular.ttf"

  # No zap stanza required
end
