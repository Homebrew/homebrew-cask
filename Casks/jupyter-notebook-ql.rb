cask 'jupyter-notebook-ql' do
  version '0.2'
  sha256 'bc4825d9c889463067a6e920cfc7c9c64f526e8a7c5cb4cdb09eb0688554dc66'

  url "https://github.com/jendas1/jupyter-notebook-quick-look/releases/download/v#{version}/jupyter-notebook-quick-look.qlgenerator.zip"
  appcast 'https://github.com/jendas1/jupyter-notebook-quick-look/releases.atom',
          checkpoint: 'b1e47a1c8de07f5a3bb11a1b66d0321a81de4ac4cd31ecad4fd643aa1e762507'
  name 'Jupyter Notebook Quick Look'
  homepage 'https://github.com/jendas1/jupyter-notebook-quick-look'

  qlplugin 'jupyter-notebook-quick-look.qlgenerator'

  caveats <<~EOS
    You need python 3 and the nbconvert module to use this plugin.
  EOS
end
