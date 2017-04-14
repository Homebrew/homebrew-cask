cask 'pokerstars' do
  version :latest
  sha256 :no_check

  language 'US', default: true do
    %w[.com]
  end

  language 'AT' do
    %w[.eu EU]
  end

  language 'DK' do
    %w[.dk DK]
  end

  language 'GR' do
    %w[.gr GR]
  end

  language 'IT' do
    %w[.it IT]
  end

  language 'RO' do
    %w[.ro RO]
  end

  language 'UK' do
    %w[.uk UK]
  end

  language 'PT' do
    %w[.pt PT]
  end

  url "https://www.pokerstars#{language[0]}/PokerStars#{language[1]}.app.zip"
  name 'PokerStars'
  homepage "https://www.pokerstars#{language[0]}"

  auto_updates true
  container nested: "PokerStars#{language[1]}/PokerStars#{language[1]}.dmg"

  app "PokerStars#{language[1]}.app"

  zap delete: [
                "~/Library/Preferences/com.pokerstars#{language[1]}.user.ini",
                "~/Library/Preferences/com.pokerstars.PokerStars#{language[1]}.plist",
                "~/Library/Application Support/PokerStars#{language[1]}",
              ]
end
