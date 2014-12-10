cask :v1 => 'sketch-toolbox' do
  version :latest
  sha256 :no_check

  url 'http://sketchtoolbox.com/Sketch%20Toolbox.zip'
  homepage 'http://sketchtoolbox.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Sketch Toolbox.app'
end
