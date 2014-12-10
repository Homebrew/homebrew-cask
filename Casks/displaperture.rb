cask :v1 => 'displaperture' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/displaperture'
  homepage 'http://manytricks.com/displaperture'
  license :unknown    # todo: improve this machine-generated value

  app 'Displaperture.app'
end
