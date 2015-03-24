cask :v1 => 'soundfly' do
  version :latest
  sha256 :no_check

  url 'http://abyssoft.com/software/soundfly/downloads/soundfly.zip'
  name 'Soundfly'
  homepage 'http://abyssoft.com/software/soundfly/'
  license :freemium

  pkg 'Soundfly.pkg'
end
