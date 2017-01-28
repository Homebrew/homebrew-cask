cask 'fraise' do
  version '3.7.3'
  sha256 '48a5cf964188d01fb2115185403a96a8dd57f127d7fcb7480970266f5b0eb2e0'

  url "https://github.com/downloads/jfmoy/Fraise/Fraise%20#{version}.zip"
  name 'Fraise'
  homepage 'https://github.com/jfmoy/Fraise'

  depends_on macos: '<= :el_capitan'

  app 'Fraise.app'

  caveats do
    discontinued
  end
end
