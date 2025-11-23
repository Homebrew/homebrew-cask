cask "font-average-mono" do
  version :latest
  sha256 :no_check

  url "https://fontlibrary.org/assets/downloads/average-mono/7e3ab639a72edd95bd08537df255440d/average-mono.zip"
  name "Average Mono"
  homepage "https://fontlibrary.org/en/font/average-mono"

  font "AverageMono/AverageMono.otf"
  font "AverageMono/AverageMonoBold.otf"
  font "AverageMono/AverageMonoItalic.otf"
  font "AverageMono/AverageMonoBoldItalic.otf"

  # No zap stanza required
end
