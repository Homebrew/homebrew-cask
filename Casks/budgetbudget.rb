cask "budgetbudget" do
  version "1.0.0-beta.17"

  if Hardware::CPU.intel?
    sha256 "a2da9dabc61d6acb497e47ee27239120268c030e53174415c714fbd0327b6aad"
    url "https://github.com/Xiphe/budgetbudget/releases/download/v#{version}/BudgetBudget-#{version}.dmg",
        verified: "github.com/Xiphe/budgetbudget/"
  else
    sha256 "7a2bb3a9dfaac03483169f7109ffbe1fb43a9f3d6fdc9ee0f75eaf5b46a73a92"
    url "https://github.com/Xiphe/budgetbudget/releases/download/v#{version}/BudgetBudget-#{version}-arm64.dmg",
        verified: "github.com/Xiphe/budgetbudget/"
  end

  name "BudgetBudget"
  desc "Gain confidence in financial decisions and plan monthly budgets with MoneyMoney"
  homepage "https://budgetbudget.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "BudgetBudget.app"
end
