cask 'fraise' do
  version '3.7.7'
  sha256 '22f127873db3546020660051c93a5b8ebe6fe5419f1918fc2b8d5fa9bb0385c2'

  url 'https://github.com/abentele/Fraise/releases/download/3.7.7/Fraise-3.7.7.zip'
  name 'Fraise'
  homepage 'https://github.com/abentele/Fraise'

  depends_on macos: '<= :el_capitan'

  app 'Fraise.app'

  caveats do
    discontinued
  end
end
