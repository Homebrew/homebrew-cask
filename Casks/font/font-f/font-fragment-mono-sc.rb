cask "font-fragment-mono-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/fragmentmonosc"
  name "Fragment Mono SC"
  homepage "https://github.com/weiweihuanghuang/fragment-mono"

  font "FragmentMonoSC-Italic.ttf"
  font "FragmentMonoSC-Regular.ttf"

  zap :not_required
end
