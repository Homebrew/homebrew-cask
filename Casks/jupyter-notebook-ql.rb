cask "jupyter-notebook-ql" do
  version "0.2"
  sha256 "bc4825d9c889463067a6e920cfc7c9c64f526e8a7c5cb4cdb09eb0688554dc66"

  url "https://github.com/jendas1/jupyter-notebook-quick-look/releases/download/v#{version}/jupyter-notebook-quick-look.qlgenerator.zip"
  appcast "https://github.com/jendas1/jupyter-notebook-quick-look/releases.atom"
  name "Jupyter Notebook Quick Look"
  homepage "https://github.com/jendas1/jupyter-notebook-quick-look"

  qlplugin "jupyter-notebook-quick-look.qlgenerator"

  caveats <<~EOS
    You need python 3 and the nbconvert module to use this plugin.
  EOS
end
