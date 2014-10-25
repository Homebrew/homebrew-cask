class Hr < Cask
  version '0.43'
  sha256 'd4bba32b712fa456165b13c1a934fbd4da4dbd7391546756c7f92deabcacbd04'

  url "http://www.hrmacapp.com/releases/hr_#{version.gsub('.', '')}.zip"
  homepage 'http://www.hrmacapp.com/'
  license :unknown

  app 'hr.app'
end
