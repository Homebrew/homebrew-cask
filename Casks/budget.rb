cask :v1 => 'budget' do
  version :latest
  sha256 :no_check

  url 'http://www.snowmintcs.com/downloads/budget.dmg'
  homepage 'http://www.snowmintcs.com/products/budgetmac/'
  license :commercial

  app 'Budget.app'
end
