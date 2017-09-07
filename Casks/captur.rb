cask 'captur' do
  version '3.2'
  sha256 '63c1881ba5ee8675f3f60135de0106dbe3948e3d8bb997c8d8f9557dd6c07834'

  # dropboxusercontent.com/s/kip1lw5jcj6y82h was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/s/kip1lw5jcj6y82h/captur-#{version}.zip"
  name 'Captur'
  homepage 'https://cambhlumbulunk.blogspot.com/p/captur.html'

  depends_on macos: '>= :yosemite'

  app 'Captur.app'
end
