cask "font-flow-rounded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowrounded/FlowRounded-Regular.ttf"
  name "Flow Rounded"
  homepage "https://fonts.google.com/specimen/Flow+Rounded"

  font "FlowRounded-Regular.ttf"

  zap :not_required
end
