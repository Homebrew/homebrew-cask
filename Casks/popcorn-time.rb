cask :v1 => 'popcorn-time' do

  module Utils
    def self.get_random_mirror
      # TODO: Dont hardcode available mirrors
      available_mirrors = ["04", "02", "18", "07", "05", "14", "06", "11", "19", "03", "10", "09"]
      available_mirrors.sample
    end
  end

  version '0.3.8-5'
  sha256 '6e545190dedc02e95a594020283b68563a1e35b7feccb983f36cd8eed1fa5d17'

  # ptn.sh is the official download host per the vendor homepage
  url "https://mirror#{Utils.get_random_mirror}.ptn.sh/build/Popcorn-Time-#{version}-Mac.dmg", :user_agent => :fake
  name 'Popcorn Time'
  homepage 'https://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'
end
